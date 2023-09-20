(declare-fun x1_ack!1602 () (_ BitVec 64))
(declare-fun x0_ack!1606 () (_ BitVec 64))
(declare-fun y0_ack!1603 () (_ BitVec 64))
(declare-fun x_ack!1604 () (_ BitVec 64))
(declare-fun y_ack!1605 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1606) ((_ to_fp 11 53) x1_ack!1602))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1603) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1604) ((_ to_fp 11 53) x0_ack!1606)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1605) ((_ to_fp 11 53) y0_ack!1603))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!1605) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1602)
                       ((_ to_fp 11 53) x0_ack!1606))
               ((_ to_fp 11 53) x0_ack!1606))
       ((_ to_fp 11 53) x1_ack!1602)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1602)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1602)
                       ((_ to_fp 11 53) x0_ack!1606)))
       ((_ to_fp 11 53) x0_ack!1606)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!1605)
          ((_ to_fp 11 53) y0_ack!1603))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!1603))))

(check-sat)
(exit)
