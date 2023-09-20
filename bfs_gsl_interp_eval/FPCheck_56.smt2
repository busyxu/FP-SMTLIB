(declare-fun x1_ack!495 () (_ BitVec 64))
(declare-fun x0_ack!500 () (_ BitVec 64))
(declare-fun x2_ack!496 () (_ BitVec 64))
(declare-fun xx_ack!499 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!497 () (_ BitVec 64))
(declare-fun y1_ack!498 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!500) ((_ to_fp 11 53) x1_ack!495)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!495) ((_ to_fp 11 53) x2_ack!496)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!495)
                       ((_ to_fp 11 53) x0_ack!500))
               ((_ to_fp 11 53) x0_ack!500))
       ((_ to_fp 11 53) x1_ack!495)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!495)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!495)
                       ((_ to_fp 11 53) x0_ack!500)))
       ((_ to_fp 11 53) x0_ack!500)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!496)
                       ((_ to_fp 11 53) x1_ack!495))
               ((_ to_fp 11 53) x1_ack!495))
       ((_ to_fp 11 53) x2_ack!496)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!496)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!496)
                       ((_ to_fp 11 53) x1_ack!495)))
       ((_ to_fp 11 53) x1_ack!495)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!495)
                    ((_ to_fp 11 53) x0_ack!500))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!496)
                    ((_ to_fp 11 53) x1_ack!495))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!499) ((_ to_fp 11 53) x0_ack!500))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!499) ((_ to_fp 11 53) x2_ack!496))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!499) ((_ to_fp 11 53) x0_ack!500))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!499) ((_ to_fp 11 53) x1_ack!495))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!495)
               ((_ to_fp 11 53) x0_ack!500))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!498)
          ((_ to_fp 11 53) y0_ack!497))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!495)
          ((_ to_fp 11 53) x0_ack!500))))

(check-sat)
(exit)
