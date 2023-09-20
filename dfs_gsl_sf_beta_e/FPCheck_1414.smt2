(declare-fun a_ack!4719 () (_ BitVec 64))
(declare-fun b_ack!4718 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) a_ack!4719) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!4718) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!4719) ((_ to_fp 11 53) #x4049000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4718) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4719) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4719) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!4719) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!4719) (CF_floor a_ack!4719)))
(assert (let ((a!1 ((_ sign_extend 32)
             (bvadd #xffffffff
                    ((_ fp.to_sbv 32) roundTowardZero (CF_floor a_ack!4719))))))
  (bvult #x0000000000000000
         (bvadd #x0000000000000008 (bvmul #x0000000000000018 a!1)))))
(assert (let ((a!1 ((_ sign_extend 32)
             (bvadd #xffffffff
                    ((_ fp.to_sbv 32) roundTowardZero (CF_floor a_ack!4719))))))
  (bvult (bvadd #x0000000000000008 (bvmul #x0000000000000018 a!1))
         #x0000000000001001)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4718) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4718) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!4718) ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4718) (CF_floor b_ack!4718))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!4718)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4718)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3f7060754242e352))

(check-sat)
(exit)
