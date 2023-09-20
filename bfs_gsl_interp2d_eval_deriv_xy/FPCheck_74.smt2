(declare-fun x1_ack!876 () (_ BitVec 64))
(declare-fun x0_ack!880 () (_ BitVec 64))
(declare-fun y0_ack!877 () (_ BitVec 64))
(declare-fun x_ack!878 () (_ BitVec 64))
(declare-fun y_ack!879 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!880) ((_ to_fp 11 53) x1_ack!876))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!877) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!878) ((_ to_fp 11 53) x0_ack!880))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!878) ((_ to_fp 11 53) x1_ack!876))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!879) ((_ to_fp 11 53) y0_ack!877))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!879) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!878) ((_ to_fp 11 53) x0_ack!880))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!878) ((_ to_fp 11 53) x1_ack!876)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!879) ((_ to_fp 11 53) y0_ack!877))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!879) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!876)
                       ((_ to_fp 11 53) x0_ack!880))
               ((_ to_fp 11 53) x0_ack!880))
       ((_ to_fp 11 53) x1_ack!876)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!876)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!876)
                       ((_ to_fp 11 53) x0_ack!880)))
       ((_ to_fp 11 53) x0_ack!880)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!877))
               ((_ to_fp 11 53) y0_ack!877))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!877)))
       ((_ to_fp 11 53) y0_ack!877)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!876)
          ((_ to_fp 11 53) x0_ack!880))))

(check-sat)
(exit)
