(declare-fun e_ack!284 () (_ BitVec 32))
(declare-fun a_ack!285 () (_ BitVec 64))
(declare-fun b_ack!281 () (_ BitVec 64))
(declare-fun c_ack!282 () (_ BitVec 64))
(declare-fun d_ack!283 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!284 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!285) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!281) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!282) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!285)
                    ((_ to_fp 11 53) b_ack!281))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!285)
                    ((_ to_fp 11 53) c_ack!282))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!281)
                    ((_ to_fp 11 53) c_ack!282))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!283) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!285) ((_ to_fp 11 53) b_ack!281))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!281) ((_ to_fp 11 53) c_ack!282))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!282) ((_ to_fp 11 53) d_ack!283))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!283) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.add roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!285)
                  ((_ to_fp 11 53) b_ack!281))
          ((_ to_fp 11 53) c_ack!282))
  d_ack!283))

(check-sat)
(exit)
