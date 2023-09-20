(declare-fun x1_ack!815 () (_ BitVec 64))
(declare-fun x0_ack!819 () (_ BitVec 64))
(declare-fun y0_ack!816 () (_ BitVec 64))
(declare-fun x_ack!817 () (_ BitVec 64))
(declare-fun y_ack!818 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!819) ((_ to_fp 11 53) x1_ack!815))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!816) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!817) ((_ to_fp 11 53) x0_ack!819))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!817) ((_ to_fp 11 53) x1_ack!815))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!818) ((_ to_fp 11 53) y0_ack!816))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!818) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!817) ((_ to_fp 11 53) x0_ack!819))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!817) ((_ to_fp 11 53) x1_ack!815)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!818) ((_ to_fp 11 53) y0_ack!816))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!818) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!815)
                       ((_ to_fp 11 53) x0_ack!819))
               ((_ to_fp 11 53) x0_ack!819))
       ((_ to_fp 11 53) x1_ack!815)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!815)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!815)
                       ((_ to_fp 11 53) x0_ack!819)))
       ((_ to_fp 11 53) x0_ack!819)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!816))
               ((_ to_fp 11 53) y0_ack!816))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!816)))
       ((_ to_fp 11 53) y0_ack!816)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) y0_ack!816))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
