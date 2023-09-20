(declare-fun epsabs_ack!178 () (_ BitVec 64))
(declare-fun epsrel_ack!179 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!180 () (_ BitVec 64))
(declare-fun b_ack!177 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!178)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!179)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!177)
                                   ((_ to_fp 11 53) a_ack!180))))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3ff0000000000000
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!180) a!1))))

(check-sat)
(exit)
