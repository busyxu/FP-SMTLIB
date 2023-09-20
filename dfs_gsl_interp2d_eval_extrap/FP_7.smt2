(declare-fun x1_ack!333 () (_ BitVec 64))
(declare-fun x0_ack!337 () (_ BitVec 64))
(declare-fun y0_ack!334 () (_ BitVec 64))
(declare-fun x_ack!335 () (_ BitVec 64))
(declare-fun y_ack!336 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!337) ((_ to_fp 11 53) x1_ack!333))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!334) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!335) ((_ to_fp 11 53) x0_ack!337))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!335) ((_ to_fp 11 53) x1_ack!333))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!336) ((_ to_fp 11 53) y0_ack!334))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!336) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!333)
                       ((_ to_fp 11 53) x0_ack!337))
               ((_ to_fp 11 53) x0_ack!337))
       ((_ to_fp 11 53) x1_ack!333)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!333)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!333)
                       ((_ to_fp 11 53) x0_ack!337)))
       ((_ to_fp 11 53) x0_ack!337)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!334))
               ((_ to_fp 11 53) y0_ack!334))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!334)))
       ((_ to_fp 11 53) y0_ack!334)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!336)
                       ((_ to_fp 11 53) y0_ack!334))
               ((_ to_fp 11 53) y0_ack!334))
       ((_ to_fp 11 53) y_ack!336)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!336)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!336)
                       ((_ to_fp 11 53) y0_ack!334)))
       ((_ to_fp 11 53) y0_ack!334)))

(check-sat)
(exit)
