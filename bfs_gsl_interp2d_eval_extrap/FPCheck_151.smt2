(declare-fun x1_ack!1537 () (_ BitVec 64))
(declare-fun x0_ack!1541 () (_ BitVec 64))
(declare-fun y0_ack!1538 () (_ BitVec 64))
(declare-fun x_ack!1539 () (_ BitVec 64))
(declare-fun y_ack!1540 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1541) ((_ to_fp 11 53) x1_ack!1537))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1538) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1539) ((_ to_fp 11 53) x0_ack!1541)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1540) ((_ to_fp 11 53) y0_ack!1538))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1540) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1537)
                       ((_ to_fp 11 53) x0_ack!1541))
               ((_ to_fp 11 53) x0_ack!1541))
       ((_ to_fp 11 53) x1_ack!1537)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1537)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1537)
                       ((_ to_fp 11 53) x0_ack!1541)))
       ((_ to_fp 11 53) x0_ack!1541)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1539)
          ((_ to_fp 11 53) x0_ack!1541))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1537)
          ((_ to_fp 11 53) x0_ack!1541))))

(check-sat)
(exit)
