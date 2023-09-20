(declare-fun c_ack!184 () (_ BitVec 64))
(declare-fun b_ack!183 () (_ BitVec 32))
(declare-fun a_ack!185 () (_ BitVec 32))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) c_ack!184) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000001 b_ack!183)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!184) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) #x3ff0000000000000)
                        ((_ to_fp 11 53) roundNearestTiesToEven a_ack!185))
                ((_ to_fp 11 53) roundNearestTiesToEven b_ack!183))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!185))
                   ((_ to_fp 11 53) roundNearestTiesToEven b_ack!183))))
  (fp.eq a!1 (CF_floor a!1))))
(assert (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!183)
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!183)
       (CF_floor ((_ to_fp 11 53) roundNearestTiesToEven b_ack!183))))
(assert (let ((a!1 (fp.eq (CF_sin (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x400921fb54442d18)
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    b_ack!183)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x400921fb54442d18)
                   (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x400921fb54442d18)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!183))))))
  (FPCHECK_FMUL_UNDERFLOW (fp.abs a!1) #x0000000000000000)))

(check-sat)
(exit)
