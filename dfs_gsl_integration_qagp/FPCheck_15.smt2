(declare-fun limit_ack!298 () (_ BitVec 64))
(declare-fun epsabs_ack!303 () (_ BitVec 64))
(declare-fun epsrel_ack!297 () (_ BitVec 64))
(declare-fun a_ack!304 () (_ BitVec 64))
(declare-fun x1_ack!299 () (_ BitVec 64))
(declare-fun x2_ack!300 () (_ BitVec 64))
(declare-fun x3_ack!301 () (_ BitVec 64))
(declare-fun b_ack!302 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!298)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!303) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!297)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!297)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!299) ((_ to_fp 11 53) a_ack!304))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!300) ((_ to_fp 11 53) x1_ack!299))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!301) ((_ to_fp 11 53) x2_ack!300))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!302) ((_ to_fp 11 53) x3_ack!301))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!304)
                                   ((_ to_fp 11 53) x1_ack!299))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!304)
                           ((_ to_fp 11 53) x1_ack!299)))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
