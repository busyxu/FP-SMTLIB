(declare-fun e_ack!219 () (_ BitVec 32))
(declare-fun a_ack!220 () (_ BitVec 64))
(declare-fun b_ack!216 () (_ BitVec 64))
(declare-fun c_ack!217 () (_ BitVec 64))
(declare-fun d_ack!218 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!219 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!220) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!216) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!217) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!220)
                    ((_ to_fp 11 53) b_ack!216))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!220)
                    ((_ to_fp 11 53) c_ack!217))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!216)
                    ((_ to_fp 11 53) c_ack!217))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!218) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!220) ((_ to_fp 11 53) b_ack!216)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!220) ((_ to_fp 11 53) c_ack!217)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!220) ((_ to_fp 11 53) d_ack!218))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!218) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!220)
                       ((_ to_fp 11 53) b_ack!216))
               ((_ to_fp 11 53) a_ack!220))
       ((_ to_fp 11 53) b_ack!216)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!220)
                       ((_ to_fp 11 53) b_ack!216))
               ((_ to_fp 11 53) b_ack!216))
       ((_ to_fp 11 53) a_ack!220)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!220)
                                   ((_ to_fp 11 53) b_ack!216))
                           ((_ to_fp 11 53) c_ack!217))
                   ((_ to_fp 11 53) d_ack!218))))
  (FPCHECK_FADD_OVERFLOW a!1 d_ack!218)))

(check-sat)
(exit)
