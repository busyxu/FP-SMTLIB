(declare-fun x1_ack!602 () (_ BitVec 64))
(declare-fun x0_ack!606 () (_ BitVec 64))
(declare-fun y0_ack!603 () (_ BitVec 64))
(declare-fun x_ack!604 () (_ BitVec 64))
(declare-fun y_ack!605 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!606) ((_ to_fp 11 53) x1_ack!602))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!603) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!604) ((_ to_fp 11 53) x0_ack!606))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!604) ((_ to_fp 11 53) x1_ack!602))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!605) ((_ to_fp 11 53) y0_ack!603))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!605) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!604) ((_ to_fp 11 53) x0_ack!606))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!604) ((_ to_fp 11 53) x1_ack!602))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!605) ((_ to_fp 11 53) y0_ack!603))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!605) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!602)
                       ((_ to_fp 11 53) x0_ack!606))
               ((_ to_fp 11 53) x0_ack!606))
       ((_ to_fp 11 53) x1_ack!602)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!602)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!602)
                       ((_ to_fp 11 53) x0_ack!606)))
       ((_ to_fp 11 53) x0_ack!606)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!603))
               ((_ to_fp 11 53) y0_ack!603))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!603)))
       ((_ to_fp 11 53) y0_ack!603)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!603))))

(check-sat)
(exit)
