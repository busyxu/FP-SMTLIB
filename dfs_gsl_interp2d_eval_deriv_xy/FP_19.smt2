(declare-fun x1_ack!755 () (_ BitVec 64))
(declare-fun x0_ack!759 () (_ BitVec 64))
(declare-fun y0_ack!756 () (_ BitVec 64))
(declare-fun x_ack!757 () (_ BitVec 64))
(declare-fun y_ack!758 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!759) ((_ to_fp 11 53) x1_ack!755))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!756) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!757) ((_ to_fp 11 53) x0_ack!759))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!757) ((_ to_fp 11 53) x1_ack!755))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!758) ((_ to_fp 11 53) y0_ack!756))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!758) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!757) ((_ to_fp 11 53) x0_ack!759))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!757) ((_ to_fp 11 53) x1_ack!755)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!758) ((_ to_fp 11 53) y0_ack!756))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!758) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!755)
                       ((_ to_fp 11 53) x0_ack!759))
               ((_ to_fp 11 53) x0_ack!759))
       ((_ to_fp 11 53) x1_ack!755)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!755)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!755)
                       ((_ to_fp 11 53) x0_ack!759)))
       ((_ to_fp 11 53) x0_ack!759)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!756))
               ((_ to_fp 11 53) y0_ack!756))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!756)))
       ((_ to_fp 11 53) y0_ack!756)))

(check-sat)
(exit)
