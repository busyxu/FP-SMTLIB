(declare-fun x1_ack!2120 () (_ BitVec 64))
(declare-fun x0_ack!2124 () (_ BitVec 64))
(declare-fun y0_ack!2121 () (_ BitVec 64))
(declare-fun x_ack!2122 () (_ BitVec 64))
(declare-fun y_ack!2123 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2124) ((_ to_fp 11 53) x1_ack!2120))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2121) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2122) ((_ to_fp 11 53) x0_ack!2124))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2122) ((_ to_fp 11 53) x1_ack!2120)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2123) ((_ to_fp 11 53) y0_ack!2121))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2123) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2120)
                       ((_ to_fp 11 53) x0_ack!2124))
               ((_ to_fp 11 53) x0_ack!2124))
       ((_ to_fp 11 53) x1_ack!2120)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2120)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2120)
                       ((_ to_fp 11 53) x0_ack!2124)))
       ((_ to_fp 11 53) x0_ack!2124)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2123)
                       ((_ to_fp 11 53) y0_ack!2121))
               ((_ to_fp 11 53) y0_ack!2121))
       ((_ to_fp 11 53) y_ack!2123)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2123)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2123)
                       ((_ to_fp 11 53) y0_ack!2121)))
       ((_ to_fp 11 53) y0_ack!2121)))

(check-sat)
(exit)
