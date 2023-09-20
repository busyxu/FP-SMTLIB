(declare-fun x1_ack!157 () (_ BitVec 64))
(declare-fun x0_ack!161 () (_ BitVec 64))
(declare-fun y0_ack!158 () (_ BitVec 64))
(declare-fun x_ack!159 () (_ BitVec 64))
(declare-fun y_ack!160 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!161) ((_ to_fp 11 53) x1_ack!157))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!158) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!159) ((_ to_fp 11 53) x0_ack!161))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!159) ((_ to_fp 11 53) x1_ack!157))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!160) ((_ to_fp 11 53) y0_ack!158))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!160) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!159) ((_ to_fp 11 53) x0_ack!161))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!159) ((_ to_fp 11 53) x1_ack!157))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!160) ((_ to_fp 11 53) y0_ack!158))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!160) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!157)
                       ((_ to_fp 11 53) x0_ack!161))
               ((_ to_fp 11 53) x0_ack!161))
       ((_ to_fp 11 53) x1_ack!157)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!157)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!157)
                       ((_ to_fp 11 53) x0_ack!161)))
       ((_ to_fp 11 53) x0_ack!161)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!158))
               ((_ to_fp 11 53) y0_ack!158))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!158)))
       ((_ to_fp 11 53) y0_ack!158)))

(check-sat)
(exit)
