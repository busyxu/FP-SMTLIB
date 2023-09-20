(declare-fun x1_ack!4373 () (_ BitVec 64))
(declare-fun x0_ack!4377 () (_ BitVec 64))
(declare-fun x2_ack!4374 () (_ BitVec 64))
(declare-fun b_ack!4376 () (_ BitVec 64))
(declare-fun a_ack!4375 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4377) ((_ to_fp 11 53) x1_ack!4373)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4373) ((_ to_fp 11 53) x2_ack!4374)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4373)
                       ((_ to_fp 11 53) x0_ack!4377))
               ((_ to_fp 11 53) x0_ack!4377))
       ((_ to_fp 11 53) x1_ack!4373)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4373)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4373)
                       ((_ to_fp 11 53) x0_ack!4377)))
       ((_ to_fp 11 53) x0_ack!4377)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4374)
                       ((_ to_fp 11 53) x1_ack!4373))
               ((_ to_fp 11 53) x1_ack!4373))
       ((_ to_fp 11 53) x2_ack!4374)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4374)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4374)
                       ((_ to_fp 11 53) x1_ack!4373)))
       ((_ to_fp 11 53) x1_ack!4373)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4373)
                    ((_ to_fp 11 53) x0_ack!4377))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4374)
                    ((_ to_fp 11 53) x1_ack!4373))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4375) ((_ to_fp 11 53) b_ack!4376))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4375) ((_ to_fp 11 53) x0_ack!4377))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4376) ((_ to_fp 11 53) x2_ack!4374))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4375) ((_ to_fp 11 53) b_ack!4376))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4375) ((_ to_fp 11 53) x0_ack!4377))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4375) ((_ to_fp 11 53) x1_ack!4373)))

(check-sat)
(exit)
