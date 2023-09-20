(declare-fun x1_ack!534 () (_ BitVec 64))
(declare-fun x0_ack!538 () (_ BitVec 64))
(declare-fun x2_ack!535 () (_ BitVec 64))
(declare-fun b_ack!537 () (_ BitVec 64))
(declare-fun a_ack!536 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!538) ((_ to_fp 11 53) x1_ack!534)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!534) ((_ to_fp 11 53) x2_ack!535)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!534)
                       ((_ to_fp 11 53) x0_ack!538))
               ((_ to_fp 11 53) x0_ack!538))
       ((_ to_fp 11 53) x1_ack!534)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!534)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!534)
                       ((_ to_fp 11 53) x0_ack!538)))
       ((_ to_fp 11 53) x0_ack!538)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!535)
                       ((_ to_fp 11 53) x1_ack!534))
               ((_ to_fp 11 53) x1_ack!534))
       ((_ to_fp 11 53) x2_ack!535)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!535)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!535)
                       ((_ to_fp 11 53) x1_ack!534)))
       ((_ to_fp 11 53) x1_ack!534)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!534)
                    ((_ to_fp 11 53) x0_ack!538))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!535)
                    ((_ to_fp 11 53) x1_ack!534))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) b_ack!537))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) x0_ack!538))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!537) ((_ to_fp 11 53) x2_ack!535))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) b_ack!537))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) x0_ack!538))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) x1_ack!534)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!534) ((_ to_fp 11 53) a_ack!536))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!537) ((_ to_fp 11 53) x1_ack!534))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!537) ((_ to_fp 11 53) x2_ack!535))))
(assert (FPCHECK_FSUB_UNDERFLOW x2_ack!535 x1_ack!534))

(check-sat)
(exit)
