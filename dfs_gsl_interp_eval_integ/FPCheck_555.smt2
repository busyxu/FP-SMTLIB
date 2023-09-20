(declare-fun x1_ack!6969 () (_ BitVec 64))
(declare-fun x0_ack!6973 () (_ BitVec 64))
(declare-fun x2_ack!6970 () (_ BitVec 64))
(declare-fun b_ack!6972 () (_ BitVec 64))
(declare-fun a_ack!6971 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6973) ((_ to_fp 11 53) x1_ack!6969)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6969) ((_ to_fp 11 53) x2_ack!6970)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6969)
                       ((_ to_fp 11 53) x0_ack!6973))
               ((_ to_fp 11 53) x0_ack!6973))
       ((_ to_fp 11 53) x1_ack!6969)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6969)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6969)
                       ((_ to_fp 11 53) x0_ack!6973)))
       ((_ to_fp 11 53) x0_ack!6973)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6970)
                       ((_ to_fp 11 53) x1_ack!6969))
               ((_ to_fp 11 53) x1_ack!6969))
       ((_ to_fp 11 53) x2_ack!6970)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6970)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6970)
                       ((_ to_fp 11 53) x1_ack!6969)))
       ((_ to_fp 11 53) x1_ack!6969)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6969)
                    ((_ to_fp 11 53) x0_ack!6973))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6970)
                    ((_ to_fp 11 53) x1_ack!6969))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6971) ((_ to_fp 11 53) b_ack!6972))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6971) ((_ to_fp 11 53) x0_ack!6973))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6972) ((_ to_fp 11 53) x2_ack!6970))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6971) ((_ to_fp 11 53) b_ack!6972))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6971) ((_ to_fp 11 53) x0_ack!6973))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6971) ((_ to_fp 11 53) x1_ack!6969)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6969) ((_ to_fp 11 53) a_ack!6971))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6972) ((_ to_fp 11 53) x1_ack!6969))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6972) ((_ to_fp 11 53) x2_ack!6970))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6970)
                    ((_ to_fp 11 53) x1_ack!6969))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6971)
                  ((_ to_fp 11 53) x1_ack!6969))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6971)
                  ((_ to_fp 11 53) x1_ack!6969)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!6972)
                  ((_ to_fp 11 53) x1_ack!6969))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!6972)
                  ((_ to_fp 11 53) x1_ack!6969)))))

(check-sat)
(exit)
