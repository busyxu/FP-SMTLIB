(declare-fun x1_ack!559 () (_ BitVec 64))
(declare-fun x0_ack!563 () (_ BitVec 64))
(declare-fun x2_ack!560 () (_ BitVec 64))
(declare-fun b_ack!562 () (_ BitVec 64))
(declare-fun a_ack!561 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!563) ((_ to_fp 11 53) x1_ack!559)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!559) ((_ to_fp 11 53) x2_ack!560)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!559)
                       ((_ to_fp 11 53) x0_ack!563))
               ((_ to_fp 11 53) x0_ack!563))
       ((_ to_fp 11 53) x1_ack!559)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!559)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!559)
                       ((_ to_fp 11 53) x0_ack!563)))
       ((_ to_fp 11 53) x0_ack!563)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!560)
                       ((_ to_fp 11 53) x1_ack!559))
               ((_ to_fp 11 53) x1_ack!559))
       ((_ to_fp 11 53) x2_ack!560)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!560)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!560)
                       ((_ to_fp 11 53) x1_ack!559)))
       ((_ to_fp 11 53) x1_ack!559)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!559)
                    ((_ to_fp 11 53) x0_ack!563))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!560)
                    ((_ to_fp 11 53) x1_ack!559))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!561) ((_ to_fp 11 53) b_ack!562))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!561) ((_ to_fp 11 53) x0_ack!563))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!562) ((_ to_fp 11 53) x2_ack!560))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!561) ((_ to_fp 11 53) b_ack!562))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!561) ((_ to_fp 11 53) x0_ack!563))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!561) ((_ to_fp 11 53) x1_ack!559))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!562) ((_ to_fp 11 53) x0_ack!563))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!562) ((_ to_fp 11 53) x1_ack!559)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!559) ((_ to_fp 11 53) b_ack!562))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!559)
                    ((_ to_fp 11 53) x0_ack!563))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
