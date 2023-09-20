(declare-fun a_ack!601 () (_ BitVec 64))
(declare-fun b_ack!600 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.gt ((_ to_fp 11 53) a_ack!601) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!600) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!601) ((_ to_fp 11 53) #x4049000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!600) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!601) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!601) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!601) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!601) (CF_floor a_ack!601)))
(assert (let ((a!1 ((_ sign_extend 32)
             (bvadd #xffffffff
                    ((_ fp.to_sbv 32) roundTowardZero (CF_floor a_ack!601))))))
  (bvult #x0000000000000000
         (bvadd #x0000000000000008 (bvmul #x0000000000000018 a!1)))))
(assert (let ((a!1 ((_ sign_extend 32)
             (bvadd #xffffffff
                    ((_ fp.to_sbv 32) roundTowardZero (CF_floor a_ack!601))))))
  (bvult (bvadd #x0000000000000008 (bvmul #x0000000000000018 a!1))
         #x0000000000001001)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!600) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!600)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand a!1 #x00000001))
                  #x3ff0000000000000
                  #xbff0000000000000)))
      (a!3 (CF_sin (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!600)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))))))
  (FPCHECK_FDIV_ACCURACY
    (fp.mul roundNearestTiesToEven a!2 a!3)
    #x400921fb54442d18))))

(check-sat)
(exit)
