(declare-fun x1_ack!521 () (_ BitVec 64))
(declare-fun x0_ack!526 () (_ BitVec 64))
(declare-fun x2_ack!522 () (_ BitVec 64))
(declare-fun xx_ack!525 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!523 () (_ BitVec 64))
(declare-fun y2_ack!524 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!526) ((_ to_fp 11 53) x1_ack!521)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!521) ((_ to_fp 11 53) x2_ack!522)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!521)
                       ((_ to_fp 11 53) x0_ack!526))
               ((_ to_fp 11 53) x0_ack!526))
       ((_ to_fp 11 53) x1_ack!521)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!521)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!521)
                       ((_ to_fp 11 53) x0_ack!526)))
       ((_ to_fp 11 53) x0_ack!526)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!522)
                       ((_ to_fp 11 53) x1_ack!521))
               ((_ to_fp 11 53) x1_ack!521))
       ((_ to_fp 11 53) x2_ack!522)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!522)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!522)
                       ((_ to_fp 11 53) x1_ack!521)))
       ((_ to_fp 11 53) x1_ack!521)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!521)
                    ((_ to_fp 11 53) x0_ack!526))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!522)
                    ((_ to_fp 11 53) x1_ack!521))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!525) ((_ to_fp 11 53) x0_ack!526))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!525) ((_ to_fp 11 53) x2_ack!522))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!525) ((_ to_fp 11 53) x0_ack!526))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!525) ((_ to_fp 11 53) x1_ack!521)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!521) ((_ to_fp 11 53) xx_ack!525))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!522)
               ((_ to_fp 11 53) x1_ack!521))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!524)
          ((_ to_fp 11 53) y1_ack!523))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!522)
          ((_ to_fp 11 53) x1_ack!521))))

(check-sat)
(exit)
