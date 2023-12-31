(declare-fun a_ack!235 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!235) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!235) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!235) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!235) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!235) ((_ to_fp 11 53) #xc014000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x400921fb54442d18)
                       ((_ to_fp 11 53) a_ack!235))
               ((_ to_fp 11 53) #x400921fb54442d18))
       ((_ to_fp 11 53) a_ack!235)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!235))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x400921fb54442d18)
                       ((_ to_fp 11 53) a_ack!235))
               ((_ to_fp 11 53) a_ack!235))
       ((_ to_fp 11 53) #x400921fb54442d18)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!235))
               ((_ to_fp 11 53) a_ack!235))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!235)))
       ((_ to_fp 11 53) a_ack!235)))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!235))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!235))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc0861b2bdd7abcd2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!235))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862642fefa39ef)))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) a_ack!235)))
  #x3ff0000000000000))

(check-sat)
(exit)
