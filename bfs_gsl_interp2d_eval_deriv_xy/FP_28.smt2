(declare-fun x1_ack!866 () (_ BitVec 64))
(declare-fun x0_ack!870 () (_ BitVec 64))
(declare-fun y0_ack!867 () (_ BitVec 64))
(declare-fun x_ack!868 () (_ BitVec 64))
(declare-fun y_ack!869 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!870) ((_ to_fp 11 53) x1_ack!866))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!867) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!868) ((_ to_fp 11 53) x0_ack!870))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!868) ((_ to_fp 11 53) x1_ack!866))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!869) ((_ to_fp 11 53) y0_ack!867))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!869) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!868) ((_ to_fp 11 53) x0_ack!870))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!868) ((_ to_fp 11 53) x1_ack!866)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!869) ((_ to_fp 11 53) y0_ack!867))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!869) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!866)
                       ((_ to_fp 11 53) x0_ack!870))
               ((_ to_fp 11 53) x0_ack!870))
       ((_ to_fp 11 53) x1_ack!866)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!866)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!866)
                       ((_ to_fp 11 53) x0_ack!870)))
       ((_ to_fp 11 53) x0_ack!870)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!867))
               ((_ to_fp 11 53) y0_ack!867))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!867)))
       ((_ to_fp 11 53) y0_ack!867)))

(check-sat)
(exit)
