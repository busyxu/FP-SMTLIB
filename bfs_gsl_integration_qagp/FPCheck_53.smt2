(declare-fun limit_ack!909 () (_ BitVec 64))
(declare-fun epsabs_ack!914 () (_ BitVec 64))
(declare-fun a_ack!915 () (_ BitVec 64))
(declare-fun x1_ack!910 () (_ BitVec 64))
(declare-fun x2_ack!911 () (_ BitVec 64))
(declare-fun x3_ack!912 () (_ BitVec 64))
(declare-fun b_ack!913 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!909)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!914)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!910) ((_ to_fp 11 53) a_ack!915))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!911) ((_ to_fp 11 53) x1_ack!910))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!912) ((_ to_fp 11 53) x2_ack!911))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!913) ((_ to_fp 11 53) x3_ack!912))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!915)
                                   ((_ to_fp 11 53) x1_ack!910))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!910)
                                   ((_ to_fp 11 53) a_ack!915)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!915)
                    ((_ to_fp 11 53) x1_ack!910)))
    a!1)))

(check-sat)
(exit)
