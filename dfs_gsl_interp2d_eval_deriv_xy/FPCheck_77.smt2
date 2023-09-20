(declare-fun x1_ack!888 () (_ BitVec 64))
(declare-fun x0_ack!894 () (_ BitVec 64))
(declare-fun y0_ack!889 () (_ BitVec 64))
(declare-fun x_ack!892 () (_ BitVec 64))
(declare-fun y_ack!893 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun z3_ack!891 () (_ BitVec 64))
(declare-fun z0_ack!890 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!894) ((_ to_fp 11 53) x1_ack!888))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!889) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!892) ((_ to_fp 11 53) x0_ack!894))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!892) ((_ to_fp 11 53) x1_ack!888))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!893) ((_ to_fp 11 53) y0_ack!889))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!893) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!892) ((_ to_fp 11 53) x0_ack!894))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!892) ((_ to_fp 11 53) x1_ack!888)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!893) ((_ to_fp 11 53) y0_ack!889))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!893) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!888)
                       ((_ to_fp 11 53) x0_ack!894))
               ((_ to_fp 11 53) x0_ack!894))
       ((_ to_fp 11 53) x1_ack!888)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!888)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!888)
                       ((_ to_fp 11 53) x0_ack!894)))
       ((_ to_fp 11 53) x0_ack!894)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!889))
               ((_ to_fp 11 53) y0_ack!889))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!889)))
       ((_ to_fp 11 53) y0_ack!889)))
(assert (FPCHECK_FSUB_ACCURACY z0_ack!890 z3_ack!891))

(check-sat)
(exit)
