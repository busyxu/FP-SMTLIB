(declare-fun c_ack!151 () (_ BitVec 64))
(declare-fun b_ack!150 () (_ BitVec 32))
(declare-fun a_ack!152 () (_ BitVec 32))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) c_ack!151) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000001 b_ack!150)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!151) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) #x3ff0000000000000)
                        ((_ to_fp 11 53) roundNearestTiesToEven a_ack!152))
                ((_ to_fp 11 53) roundNearestTiesToEven b_ack!150))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!152))
                   ((_ to_fp 11 53) roundNearestTiesToEven b_ack!150))))
  (fp.eq a!1 (CF_floor a!1))))
(assert (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!150)
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!150)
       (CF_floor ((_ to_fp 11 53) roundNearestTiesToEven b_ack!150))))
(assert (FPCHECK_FDIV_OVERFLOW
  #x400921fb54442d18
  (CF_sin (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x400921fb54442d18)
                  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!150)))))

(check-sat)
(exit)
