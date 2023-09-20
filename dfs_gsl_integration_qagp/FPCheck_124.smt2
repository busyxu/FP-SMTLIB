(declare-fun limit_ack!2130 () (_ BitVec 64))
(declare-fun epsabs_ack!2135 () (_ BitVec 64))
(declare-fun epsrel_ack!2129 () (_ BitVec 64))
(declare-fun a_ack!2136 () (_ BitVec 64))
(declare-fun x1_ack!2131 () (_ BitVec 64))
(declare-fun x2_ack!2132 () (_ BitVec 64))
(declare-fun x3_ack!2133 () (_ BitVec 64))
(declare-fun b_ack!2134 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2130)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2135) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2129)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2129)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2131) ((_ to_fp 11 53) a_ack!2136))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2132) ((_ to_fp 11 53) x1_ack!2131))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2133) ((_ to_fp 11 53) x2_ack!2132))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2134) ((_ to_fp 11 53) x3_ack!2133))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2136)
                                   ((_ to_fp 11 53) x1_ack!2131))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2131)
                                   ((_ to_fp 11 53) a_ack!2136)))
                   ((_ to_fp 11 53) #x3fe5bdb9228de198))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2136)
                    ((_ to_fp 11 53) x1_ack!2131)))
    a!1)))

(check-sat)
(exit)
