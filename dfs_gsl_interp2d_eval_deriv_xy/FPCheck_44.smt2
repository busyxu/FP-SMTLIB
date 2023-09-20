(declare-fun x1_ack!496 () (_ BitVec 64))
(declare-fun x0_ack!500 () (_ BitVec 64))
(declare-fun y0_ack!497 () (_ BitVec 64))
(declare-fun x_ack!498 () (_ BitVec 64))
(declare-fun y_ack!499 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!500) ((_ to_fp 11 53) x1_ack!496))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!497) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!498) ((_ to_fp 11 53) x0_ack!500))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!498) ((_ to_fp 11 53) x1_ack!496))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!499) ((_ to_fp 11 53) y0_ack!497))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!499) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!498) ((_ to_fp 11 53) x0_ack!500))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!498) ((_ to_fp 11 53) x1_ack!496))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!499) ((_ to_fp 11 53) y0_ack!497))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!499) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!496)
                  ((_ to_fp 11 53) x0_ack!500)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!497)))))

(check-sat)
(exit)
