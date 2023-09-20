(declare-fun x1_ack!393 () (_ BitVec 64))
(declare-fun x0_ack!397 () (_ BitVec 64))
(declare-fun y0_ack!394 () (_ BitVec 64))
(declare-fun x_ack!395 () (_ BitVec 64))
(declare-fun y_ack!396 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!397) ((_ to_fp 11 53) x1_ack!393))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!394) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!395) ((_ to_fp 11 53) x0_ack!397))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!395) ((_ to_fp 11 53) x1_ack!393))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!396) ((_ to_fp 11 53) y0_ack!394))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!396) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!393)
                       ((_ to_fp 11 53) x0_ack!397))
               ((_ to_fp 11 53) x0_ack!397))
       ((_ to_fp 11 53) x1_ack!393)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!393)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!393)
                       ((_ to_fp 11 53) x0_ack!397)))
       ((_ to_fp 11 53) x0_ack!397)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!394))
               ((_ to_fp 11 53) y0_ack!394))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!394)))
       ((_ to_fp 11 53) y0_ack!394)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!396)
                       ((_ to_fp 11 53) y0_ack!394))
               ((_ to_fp 11 53) y0_ack!394))
       ((_ to_fp 11 53) y_ack!396)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!396)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!396)
                       ((_ to_fp 11 53) y0_ack!394)))
       ((_ to_fp 11 53) y0_ack!394)))

(check-sat)
(exit)
