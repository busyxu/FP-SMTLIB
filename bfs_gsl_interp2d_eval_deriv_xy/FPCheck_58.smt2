(declare-fun x1_ack!632 () (_ BitVec 64))
(declare-fun x0_ack!636 () (_ BitVec 64))
(declare-fun y0_ack!633 () (_ BitVec 64))
(declare-fun x_ack!634 () (_ BitVec 64))
(declare-fun y_ack!635 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!636) ((_ to_fp 11 53) x1_ack!632))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!633) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!634) ((_ to_fp 11 53) x0_ack!636))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!634) ((_ to_fp 11 53) x1_ack!632))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!635) ((_ to_fp 11 53) y0_ack!633))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!635) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!634) ((_ to_fp 11 53) x0_ack!636))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!634) ((_ to_fp 11 53) x1_ack!632))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!635) ((_ to_fp 11 53) y0_ack!633))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!635) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!632)
                       ((_ to_fp 11 53) x0_ack!636))
               ((_ to_fp 11 53) x0_ack!636))
       ((_ to_fp 11 53) x1_ack!632)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!632)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!632)
                       ((_ to_fp 11 53) x0_ack!636)))
       ((_ to_fp 11 53) x0_ack!636)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!633))
               ((_ to_fp 11 53) y0_ack!633))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!633)))
       ((_ to_fp 11 53) y0_ack!633)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!632)
                  ((_ to_fp 11 53) x0_ack!636)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!633)))))

(check-sat)
(exit)
