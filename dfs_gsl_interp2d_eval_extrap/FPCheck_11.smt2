(declare-fun x1_ack!107 () (_ BitVec 64))
(declare-fun x0_ack!111 () (_ BitVec 64))
(declare-fun y0_ack!108 () (_ BitVec 64))
(declare-fun x_ack!109 () (_ BitVec 64))
(declare-fun y_ack!110 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!111) ((_ to_fp 11 53) x1_ack!107))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!108) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!109) ((_ to_fp 11 53) x0_ack!111))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!109) ((_ to_fp 11 53) x1_ack!107))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!110) ((_ to_fp 11 53) y0_ack!108))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!110) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!107)
                       ((_ to_fp 11 53) x0_ack!111))
               ((_ to_fp 11 53) x0_ack!111))
       ((_ to_fp 11 53) x1_ack!107)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!107)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!107)
                       ((_ to_fp 11 53) x0_ack!111)))
       ((_ to_fp 11 53) x0_ack!111)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!108))
               ((_ to_fp 11 53) y0_ack!108))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!108)))
       ((_ to_fp 11 53) y0_ack!108)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!109)
          ((_ to_fp 11 53) x0_ack!111))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!107)
          ((_ to_fp 11 53) x0_ack!111))))

(check-sat)
(exit)
