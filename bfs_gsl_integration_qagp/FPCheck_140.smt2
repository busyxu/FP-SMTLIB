(declare-fun limit_ack!2155 () (_ BitVec 64))
(declare-fun epsabs_ack!2160 () (_ BitVec 64))
(declare-fun a_ack!2161 () (_ BitVec 64))
(declare-fun x1_ack!2156 () (_ BitVec 64))
(declare-fun x2_ack!2157 () (_ BitVec 64))
(declare-fun x3_ack!2158 () (_ BitVec 64))
(declare-fun b_ack!2159 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2155)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2160)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2156) ((_ to_fp 11 53) a_ack!2161))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2157) ((_ to_fp 11 53) x1_ack!2156))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2158) ((_ to_fp 11 53) x2_ack!2157))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2159) ((_ to_fp 11 53) x3_ack!2158))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2161)
                                   ((_ to_fp 11 53) x1_ack!2156))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2156)
                                   ((_ to_fp 11 53) a_ack!2161)))
                   ((_ to_fp 11 53) #x3fe5bdb9228de198))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2161)
                    ((_ to_fp 11 53) x1_ack!2156)))
    a!1)))

(check-sat)
(exit)
