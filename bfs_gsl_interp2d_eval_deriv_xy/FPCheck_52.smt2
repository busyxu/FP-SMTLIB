(declare-fun x1_ack!582 () (_ BitVec 64))
(declare-fun x0_ack!586 () (_ BitVec 64))
(declare-fun y0_ack!583 () (_ BitVec 64))
(declare-fun x_ack!584 () (_ BitVec 64))
(declare-fun y_ack!585 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!586) ((_ to_fp 11 53) x1_ack!582))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!583) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!584) ((_ to_fp 11 53) x0_ack!586))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!584) ((_ to_fp 11 53) x1_ack!582))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!585) ((_ to_fp 11 53) y0_ack!583))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!585) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!584) ((_ to_fp 11 53) x0_ack!586))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!584) ((_ to_fp 11 53) x1_ack!582))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!585) ((_ to_fp 11 53) y0_ack!583))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!585) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!582)
                       ((_ to_fp 11 53) x0_ack!586))
               ((_ to_fp 11 53) x0_ack!586))
       ((_ to_fp 11 53) x1_ack!582)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!582)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!582)
                       ((_ to_fp 11 53) x0_ack!586)))
       ((_ to_fp 11 53) x0_ack!586)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!583))
               ((_ to_fp 11 53) y0_ack!583))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!583)))
       ((_ to_fp 11 53) y0_ack!583)))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!582)
          ((_ to_fp 11 53) x0_ack!586))))

(check-sat)
(exit)
