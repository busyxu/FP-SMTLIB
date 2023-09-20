(declare-fun x1_ack!2741 () (_ BitVec 64))
(declare-fun x0_ack!2745 () (_ BitVec 64))
(declare-fun y0_ack!2742 () (_ BitVec 64))
(declare-fun x_ack!2743 () (_ BitVec 64))
(declare-fun y_ack!2744 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2745) ((_ to_fp 11 53) x1_ack!2741))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2742) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2743) ((_ to_fp 11 53) x0_ack!2745))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2743) ((_ to_fp 11 53) x1_ack!2741))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2744) ((_ to_fp 11 53) y0_ack!2742))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2744) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2741)
                       ((_ to_fp 11 53) x0_ack!2745))
               ((_ to_fp 11 53) x0_ack!2745))
       ((_ to_fp 11 53) x1_ack!2741)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2741)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2741)
                       ((_ to_fp 11 53) x0_ack!2745)))
       ((_ to_fp 11 53) x0_ack!2745)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2742))
               ((_ to_fp 11 53) y0_ack!2742))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2742)))
       ((_ to_fp 11 53) y0_ack!2742)))

(check-sat)
(exit)
