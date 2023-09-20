(declare-fun a_ack!19 () (_ BitVec 64))
(declare-fun c_ack!18 () (_ BitVec 32))
(declare-fun b_ack!17 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!19) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 c_ack!18)))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand b_ack!17 #x00000007)))
       #x0000000000000011))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!19) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!19) ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!19 (CF_pow a_ack!19 #x3fd5555555555555)))

(check-sat)
(exit)
