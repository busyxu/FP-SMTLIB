(declare-fun x1_ack!314 () (_ BitVec 64))
(declare-fun x0_ack!318 () (_ BitVec 64))
(declare-fun y0_ack!315 () (_ BitVec 64))
(declare-fun x_ack!316 () (_ BitVec 64))
(declare-fun y_ack!317 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!318) ((_ to_fp 11 53) x1_ack!314))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!315) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!316) ((_ to_fp 11 53) x0_ack!318))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!316) ((_ to_fp 11 53) x1_ack!314))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!317) ((_ to_fp 11 53) y0_ack!315))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!317) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!316) ((_ to_fp 11 53) x0_ack!318))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!316) ((_ to_fp 11 53) x1_ack!314))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!317) ((_ to_fp 11 53) y0_ack!315))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!317) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!314)
                       ((_ to_fp 11 53) x0_ack!318))
               ((_ to_fp 11 53) x0_ack!318))
       ((_ to_fp 11 53) x1_ack!314)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!314)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!314)
                       ((_ to_fp 11 53) x0_ack!318)))
       ((_ to_fp 11 53) x0_ack!318)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!315))
               ((_ to_fp 11 53) y0_ack!315))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!315)))
       ((_ to_fp 11 53) y0_ack!315)))

(check-sat)
(exit)
