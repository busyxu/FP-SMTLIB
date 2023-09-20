(declare-fun x1_ack!775 () (_ BitVec 64))
(declare-fun x0_ack!779 () (_ BitVec 64))
(declare-fun y0_ack!776 () (_ BitVec 64))
(declare-fun x_ack!777 () (_ BitVec 64))
(declare-fun y_ack!778 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!779) ((_ to_fp 11 53) x1_ack!775))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!776) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!777) ((_ to_fp 11 53) x0_ack!779))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!777) ((_ to_fp 11 53) x1_ack!775))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!778) ((_ to_fp 11 53) y0_ack!776))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!778) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!777) ((_ to_fp 11 53) x0_ack!779))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!777) ((_ to_fp 11 53) x1_ack!775)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!778) ((_ to_fp 11 53) y0_ack!776))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!778) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!775)
                       ((_ to_fp 11 53) x0_ack!779))
               ((_ to_fp 11 53) x0_ack!779))
       ((_ to_fp 11 53) x1_ack!775)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!775)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!775)
                       ((_ to_fp 11 53) x0_ack!779)))
       ((_ to_fp 11 53) x0_ack!779)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!776))
               ((_ to_fp 11 53) y0_ack!776))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!776)))
       ((_ to_fp 11 53) y0_ack!776)))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!775)
          ((_ to_fp 11 53) x0_ack!779))))

(check-sat)
(exit)
