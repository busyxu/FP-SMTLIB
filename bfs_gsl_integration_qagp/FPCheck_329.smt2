(declare-fun limit_ack!4948 () (_ BitVec 64))
(declare-fun epsabs_ack!4953 () (_ BitVec 64))
(declare-fun a_ack!4954 () (_ BitVec 64))
(declare-fun x1_ack!4949 () (_ BitVec 64))
(declare-fun x2_ack!4950 () (_ BitVec 64))
(declare-fun x3_ack!4951 () (_ BitVec 64))
(declare-fun b_ack!4952 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4948)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4953)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4949) ((_ to_fp 11 53) a_ack!4954))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4950) ((_ to_fp 11 53) x1_ack!4949))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4951) ((_ to_fp 11 53) x2_ack!4950))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4952) ((_ to_fp 11 53) x3_ack!4951))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4954)
                                   ((_ to_fp 11 53) x1_ack!4949))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4949)
                                   ((_ to_fp 11 53) a_ack!4954)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4954)
                    ((_ to_fp 11 53) x1_ack!4949)))
    a!1)))

(check-sat)
(exit)
