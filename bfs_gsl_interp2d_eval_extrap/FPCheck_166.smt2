(declare-fun x1_ack!1677 () (_ BitVec 64))
(declare-fun x0_ack!1681 () (_ BitVec 64))
(declare-fun y0_ack!1678 () (_ BitVec 64))
(declare-fun x_ack!1679 () (_ BitVec 64))
(declare-fun y_ack!1680 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1681) ((_ to_fp 11 53) x1_ack!1677))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1678) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1679) ((_ to_fp 11 53) x0_ack!1681)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1680) ((_ to_fp 11 53) y0_ack!1678))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1680) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1677)
                       ((_ to_fp 11 53) x0_ack!1681))
               ((_ to_fp 11 53) x0_ack!1681))
       ((_ to_fp 11 53) x1_ack!1677)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1677)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1677)
                       ((_ to_fp 11 53) x0_ack!1681)))
       ((_ to_fp 11 53) x0_ack!1681)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1678))
               ((_ to_fp 11 53) y0_ack!1678))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1678)))
       ((_ to_fp 11 53) y0_ack!1678)))
(assert (FPCHECK_FSUB_ACCURACY x_ack!1679 x0_ack!1681))

(check-sat)
(exit)
