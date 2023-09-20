(declare-fun b_ack!180 () (_ BitVec 64))
(declare-fun a_ack!181 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!180) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!180) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!181) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!181)
                       ((_ to_fp 11 53) b_ack!180)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!181)
                                   ((_ to_fp 11 53) b_ack!180))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!181)
                                   ((_ to_fp 11 53) b_ack!180)))
                   ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!181)
                                   ((_ to_fp 11 53) b_ack!180))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (FPCHECK_FMUL_UNDERFLOW #x3cb0000000000000 a!2))))

(check-sat)
(exit)
