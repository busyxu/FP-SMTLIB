(declare-fun a_ack!524 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!524) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!524) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!524) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!524) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!524) (CF_floor a_ack!524)))
(assert (let ((a!1 ((_ sign_extend 32)
             (bvadd #xffffffff
                    ((_ fp.to_sbv 32) roundTowardZero (CF_floor a_ack!524))))))
  (bvult #x0000000000000000
         (bvadd #x0000000000000008 (bvmul #x0000000000000018 a!1)))))
(assert (let ((a!1 ((_ sign_extend 32)
             (bvadd #xffffffff
                    ((_ fp.to_sbv 32) roundTowardZero (CF_floor a_ack!524))))))
  (bvult (bvadd #x0000000000000008 (bvmul #x0000000000000018 a!1))
         #x0000000000001001)))

(check-sat)
(exit)
