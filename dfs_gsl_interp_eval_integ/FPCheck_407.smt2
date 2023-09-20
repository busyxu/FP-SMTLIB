(declare-fun x1_ack!4995 () (_ BitVec 64))
(declare-fun x0_ack!4999 () (_ BitVec 64))
(declare-fun x2_ack!4996 () (_ BitVec 64))
(declare-fun b_ack!4998 () (_ BitVec 64))
(declare-fun a_ack!4997 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4999) ((_ to_fp 11 53) x1_ack!4995)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4995) ((_ to_fp 11 53) x2_ack!4996)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4995)
                       ((_ to_fp 11 53) x0_ack!4999))
               ((_ to_fp 11 53) x0_ack!4999))
       ((_ to_fp 11 53) x1_ack!4995)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4995)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4995)
                       ((_ to_fp 11 53) x0_ack!4999)))
       ((_ to_fp 11 53) x0_ack!4999)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4996)
                       ((_ to_fp 11 53) x1_ack!4995))
               ((_ to_fp 11 53) x1_ack!4995))
       ((_ to_fp 11 53) x2_ack!4996)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4996)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4996)
                       ((_ to_fp 11 53) x1_ack!4995)))
       ((_ to_fp 11 53) x1_ack!4995)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4995)
                    ((_ to_fp 11 53) x0_ack!4999))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4996)
                    ((_ to_fp 11 53) x1_ack!4995))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4997) ((_ to_fp 11 53) b_ack!4998))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4997) ((_ to_fp 11 53) x0_ack!4999))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4998) ((_ to_fp 11 53) x2_ack!4996))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4997) ((_ to_fp 11 53) b_ack!4998))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4997) ((_ to_fp 11 53) x0_ack!4999))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4997) ((_ to_fp 11 53) x1_ack!4995)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4995) ((_ to_fp 11 53) a_ack!4997))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4998) ((_ to_fp 11 53) x1_ack!4995))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4998) ((_ to_fp 11 53) x2_ack!4996)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4996)
                    ((_ to_fp 11 53) x1_ack!4995))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4997)
                       ((_ to_fp 11 53) x1_ack!4995))
               ((_ to_fp 11 53) x1_ack!4995))
       ((_ to_fp 11 53) a_ack!4997)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!4997)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4997)
                       ((_ to_fp 11 53) x1_ack!4995)))
       ((_ to_fp 11 53) x1_ack!4995)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4997)
          ((_ to_fp 11 53) x1_ack!4995))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4998)
          ((_ to_fp 11 53) x1_ack!4995))))

(check-sat)
(exit)
