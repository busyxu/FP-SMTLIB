(declare-fun x1_ack!990 () (_ BitVec 64))
(declare-fun x0_ack!994 () (_ BitVec 64))
(declare-fun y0_ack!991 () (_ BitVec 64))
(declare-fun x_ack!992 () (_ BitVec 64))
(declare-fun y_ack!993 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!994) ((_ to_fp 11 53) x1_ack!990))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!991) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!992) ((_ to_fp 11 53) x0_ack!994))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!992) ((_ to_fp 11 53) x1_ack!990))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!993) ((_ to_fp 11 53) y0_ack!991))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!993) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!992) ((_ to_fp 11 53) x0_ack!994))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!992) ((_ to_fp 11 53) x1_ack!990)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!993) ((_ to_fp 11 53) y0_ack!991))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!993) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!990)
                       ((_ to_fp 11 53) x0_ack!994))
               ((_ to_fp 11 53) x0_ack!994))
       ((_ to_fp 11 53) x1_ack!990)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!990)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!990)
                       ((_ to_fp 11 53) x0_ack!994)))
       ((_ to_fp 11 53) x0_ack!994)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!991))
               ((_ to_fp 11 53) y0_ack!991))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!991)))
       ((_ to_fp 11 53) y0_ack!991)))

(check-sat)
(exit)
