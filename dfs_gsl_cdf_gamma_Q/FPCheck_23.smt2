(declare-fun b_ack!139 () (_ BitVec 64))
(declare-fun x_ack!140 () (_ BitVec 64))
(declare-fun a_ack!138 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!140)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!139)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!140) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!140)
                    ((_ to_fp 11 53) b_ack!139))
            ((_ to_fp 11 53) a_ack!138))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!138) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!140)
                    ((_ to_fp 11 53) b_ack!139))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!140)
                    ((_ to_fp 11 53) b_ack!139))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!138) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!140)
                     ((_ to_fp 11 53) b_ack!139))
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!138)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!138) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!138) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!138)
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!140)
                     ((_ to_fp 11 53) b_ack!139)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!140)
                    ((_ to_fp 11 53) b_ack!139))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!138)
                    ((_ to_fp 11 53) #x7ff8000000000001)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!138) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!140)
                    ((_ to_fp 11 53) b_ack!139))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!138)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!140)
                                   ((_ to_fp 11 53) b_ack!139))
                           ((_ to_fp 11 53) a_ack!138))
                   ((_ to_fp 11 53) a_ack!138))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #xbff0000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!140)
                                   ((_ to_fp 11 53) b_ack!139))
                           ((_ to_fp 11 53) a_ack!138))
                   ((_ to_fp 11 53) a_ack!138))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!140)
                                   ((_ to_fp 11 53) b_ack!139))
                           ((_ to_fp 11 53) a_ack!138))
                   ((_ to_fp 11 53) a_ack!138))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!140)
                                   ((_ to_fp 11 53) b_ack!139))
                           ((_ to_fp 11 53) a_ack!138))
                   ((_ to_fp 11 53) a_ack!138))))
  (FPCHECK_FADD_UNDERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
