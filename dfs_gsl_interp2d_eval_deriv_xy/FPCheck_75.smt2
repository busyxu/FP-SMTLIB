(declare-fun x1_ack!860 () (_ BitVec 64))
(declare-fun x0_ack!866 () (_ BitVec 64))
(declare-fun y0_ack!861 () (_ BitVec 64))
(declare-fun x_ack!864 () (_ BitVec 64))
(declare-fun y_ack!865 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun z3_ack!863 () (_ BitVec 64))
(declare-fun z0_ack!862 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!866) ((_ to_fp 11 53) x1_ack!860))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!861) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!864) ((_ to_fp 11 53) x0_ack!866))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!864) ((_ to_fp 11 53) x1_ack!860))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!865) ((_ to_fp 11 53) y0_ack!861))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!865) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!864) ((_ to_fp 11 53) x0_ack!866))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!864) ((_ to_fp 11 53) x1_ack!860)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!865) ((_ to_fp 11 53) y0_ack!861))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!865) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!860)
                       ((_ to_fp 11 53) x0_ack!866))
               ((_ to_fp 11 53) x0_ack!866))
       ((_ to_fp 11 53) x1_ack!860)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!860)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!860)
                       ((_ to_fp 11 53) x0_ack!866)))
       ((_ to_fp 11 53) x0_ack!866)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!861))
               ((_ to_fp 11 53) y0_ack!861))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!861)))
       ((_ to_fp 11 53) y0_ack!861)))
(assert (FPCHECK_FSUB_OVERFLOW z0_ack!862 z3_ack!863))

(check-sat)
(exit)
