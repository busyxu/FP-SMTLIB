(declare-fun x1_ack!4915 () (_ BitVec 64))
(declare-fun x0_ack!4919 () (_ BitVec 64))
(declare-fun x2_ack!4916 () (_ BitVec 64))
(declare-fun b_ack!4918 () (_ BitVec 64))
(declare-fun a_ack!4917 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4919) ((_ to_fp 11 53) x1_ack!4915)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4915) ((_ to_fp 11 53) x2_ack!4916)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4915)
                       ((_ to_fp 11 53) x0_ack!4919))
               ((_ to_fp 11 53) x0_ack!4919))
       ((_ to_fp 11 53) x1_ack!4915)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4915)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4915)
                       ((_ to_fp 11 53) x0_ack!4919)))
       ((_ to_fp 11 53) x0_ack!4919)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4916)
                       ((_ to_fp 11 53) x1_ack!4915))
               ((_ to_fp 11 53) x1_ack!4915))
       ((_ to_fp 11 53) x2_ack!4916)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4916)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4916)
                       ((_ to_fp 11 53) x1_ack!4915)))
       ((_ to_fp 11 53) x1_ack!4915)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4915)
                    ((_ to_fp 11 53) x0_ack!4919))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4916)
                    ((_ to_fp 11 53) x1_ack!4915))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4917) ((_ to_fp 11 53) b_ack!4918))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4917) ((_ to_fp 11 53) x0_ack!4919))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4918) ((_ to_fp 11 53) x2_ack!4916))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4917) ((_ to_fp 11 53) b_ack!4918))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4917) ((_ to_fp 11 53) x0_ack!4919))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4917) ((_ to_fp 11 53) x1_ack!4915)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4915) ((_ to_fp 11 53) a_ack!4917))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4918) ((_ to_fp 11 53) x1_ack!4915))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4918) ((_ to_fp 11 53) x2_ack!4916)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4916)
                    ((_ to_fp 11 53) x1_ack!4915))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
