(declare-fun limit_ack!4934 () (_ BitVec 64))
(declare-fun epsabs_ack!4939 () (_ BitVec 64))
(declare-fun a_ack!4940 () (_ BitVec 64))
(declare-fun x1_ack!4935 () (_ BitVec 64))
(declare-fun x2_ack!4936 () (_ BitVec 64))
(declare-fun x3_ack!4937 () (_ BitVec 64))
(declare-fun b_ack!4938 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4934)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4939)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4935) ((_ to_fp 11 53) a_ack!4940))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4936) ((_ to_fp 11 53) x1_ack!4935))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4937) ((_ to_fp 11 53) x2_ack!4936))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4938) ((_ to_fp 11 53) x3_ack!4937))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4940)
                                   ((_ to_fp 11 53) x1_ack!4935))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4935)
                                   ((_ to_fp 11 53) a_ack!4940)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4940)
                    ((_ to_fp 11 53) x1_ack!4935)))
    a!1)))

(check-sat)
(exit)
