(declare-fun a_ack!205 () (_ BitVec 64))
(declare-fun b_ack!204 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!204))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!205))))))
  (not a!1)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!205))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) b_ack!204))
               ((_ to_fp 11 53) #x3fe62e42fefa39ef))
       ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!204) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!205) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!205) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!205) (CF_floor a_ack!205))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!205) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!205)
                       ((_ to_fp 11 53) b_ack!204))
               ((_ to_fp 11 53) a_ack!205))
       ((_ to_fp 11 53) b_ack!204)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!205)
                       ((_ to_fp 11 53) b_ack!204))
               ((_ to_fp 11 53) b_ack!204))
       ((_ to_fp 11 53) a_ack!205)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!205)
               ((_ to_fp 11 53) b_ack!204))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x400921fb54442d18
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) a_ack!205))))

(check-sat)
(exit)
