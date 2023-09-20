(declare-fun x1_ack!587 () (_ BitVec 64))
(declare-fun x0_ack!591 () (_ BitVec 64))
(declare-fun y0_ack!588 () (_ BitVec 64))
(declare-fun x_ack!589 () (_ BitVec 64))
(declare-fun y_ack!590 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!591) ((_ to_fp 11 53) x1_ack!587))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!588) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!589) ((_ to_fp 11 53) x0_ack!591))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!589) ((_ to_fp 11 53) x1_ack!587))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!590) ((_ to_fp 11 53) y0_ack!588))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!590) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!589) ((_ to_fp 11 53) x0_ack!591))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!589) ((_ to_fp 11 53) x1_ack!587))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!590) ((_ to_fp 11 53) y0_ack!588))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!590) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!587)
                       ((_ to_fp 11 53) x0_ack!591))
               ((_ to_fp 11 53) x0_ack!591))
       ((_ to_fp 11 53) x1_ack!587)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!587)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!587)
                       ((_ to_fp 11 53) x0_ack!591)))
       ((_ to_fp 11 53) x0_ack!591)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!588))
               ((_ to_fp 11 53) y0_ack!588))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!588)))
       ((_ to_fp 11 53) y0_ack!588)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!587)
               ((_ to_fp 11 53) x0_ack!591))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
