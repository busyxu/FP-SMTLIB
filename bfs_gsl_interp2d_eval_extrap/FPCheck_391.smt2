(declare-fun x1_ack!4251 () (_ BitVec 64))
(declare-fun x0_ack!4255 () (_ BitVec 64))
(declare-fun y0_ack!4252 () (_ BitVec 64))
(declare-fun x_ack!4253 () (_ BitVec 64))
(declare-fun y_ack!4254 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4255) ((_ to_fp 11 53) x1_ack!4251))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4252) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4253) ((_ to_fp 11 53) x0_ack!4255)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!4254) ((_ to_fp 11 53) y0_ack!4252))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!4254) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4251)
                       ((_ to_fp 11 53) x0_ack!4255))
               ((_ to_fp 11 53) x0_ack!4255))
       ((_ to_fp 11 53) x1_ack!4251)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4251)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4251)
                       ((_ to_fp 11 53) x0_ack!4255)))
       ((_ to_fp 11 53) x0_ack!4255)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4252))
               ((_ to_fp 11 53) y0_ack!4252))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4252)))
       ((_ to_fp 11 53) y0_ack!4252)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4253)
                       ((_ to_fp 11 53) x0_ack!4255))
               ((_ to_fp 11 53) x0_ack!4255))
       ((_ to_fp 11 53) x_ack!4253)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!4253)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!4253)
                       ((_ to_fp 11 53) x0_ack!4255)))
       ((_ to_fp 11 53) x0_ack!4255)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!4253)
          ((_ to_fp 11 53) x0_ack!4255))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!4251)
          ((_ to_fp 11 53) x0_ack!4255))))

(check-sat)
(exit)
