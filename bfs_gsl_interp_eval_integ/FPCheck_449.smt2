(declare-fun x1_ack!5693 () (_ BitVec 64))
(declare-fun x0_ack!5697 () (_ BitVec 64))
(declare-fun x2_ack!5694 () (_ BitVec 64))
(declare-fun b_ack!5696 () (_ BitVec 64))
(declare-fun a_ack!5695 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5697) ((_ to_fp 11 53) x1_ack!5693)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5693) ((_ to_fp 11 53) x2_ack!5694)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5693)
                       ((_ to_fp 11 53) x0_ack!5697))
               ((_ to_fp 11 53) x0_ack!5697))
       ((_ to_fp 11 53) x1_ack!5693)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5693)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5693)
                       ((_ to_fp 11 53) x0_ack!5697)))
       ((_ to_fp 11 53) x0_ack!5697)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5694)
                       ((_ to_fp 11 53) x1_ack!5693))
               ((_ to_fp 11 53) x1_ack!5693))
       ((_ to_fp 11 53) x2_ack!5694)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5694)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5694)
                       ((_ to_fp 11 53) x1_ack!5693)))
       ((_ to_fp 11 53) x1_ack!5693)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5693)
                    ((_ to_fp 11 53) x0_ack!5697))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5694)
                    ((_ to_fp 11 53) x1_ack!5693))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5695) ((_ to_fp 11 53) b_ack!5696))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5695) ((_ to_fp 11 53) x0_ack!5697))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5696) ((_ to_fp 11 53) x2_ack!5694))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5695) ((_ to_fp 11 53) b_ack!5696))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5695) ((_ to_fp 11 53) x0_ack!5697))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5695) ((_ to_fp 11 53) x1_ack!5693))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5696) ((_ to_fp 11 53) x0_ack!5697))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5696) ((_ to_fp 11 53) x1_ack!5693)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5693) ((_ to_fp 11 53) b_ack!5696))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5693)
                    ((_ to_fp 11 53) x0_ack!5697))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!5695 x0_ack!5697))

(check-sat)
(exit)
