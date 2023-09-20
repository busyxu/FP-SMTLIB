(declare-fun x1_ack!439 () (_ BitVec 64))
(declare-fun x0_ack!443 () (_ BitVec 64))
(declare-fun y0_ack!440 () (_ BitVec 64))
(declare-fun x_ack!441 () (_ BitVec 64))
(declare-fun y_ack!442 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!443) ((_ to_fp 11 53) x1_ack!439))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!440) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!441) ((_ to_fp 11 53) x0_ack!443))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!441) ((_ to_fp 11 53) x1_ack!439))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!442) ((_ to_fp 11 53) y0_ack!440))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!442) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!441) ((_ to_fp 11 53) x0_ack!443))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!441) ((_ to_fp 11 53) x1_ack!439))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!442) ((_ to_fp 11 53) y0_ack!440))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!442) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!439)
                       ((_ to_fp 11 53) x0_ack!443))
               ((_ to_fp 11 53) x0_ack!443))
       ((_ to_fp 11 53) x1_ack!439)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!439)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!439)
                       ((_ to_fp 11 53) x0_ack!443)))
       ((_ to_fp 11 53) x0_ack!443)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!440))
               ((_ to_fp 11 53) y0_ack!440))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!440)))
       ((_ to_fp 11 53) y0_ack!440)))

(check-sat)
(exit)
