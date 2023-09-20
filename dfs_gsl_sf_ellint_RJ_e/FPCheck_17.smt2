(declare-fun e_ack!204 () (_ BitVec 32))
(declare-fun a_ack!205 () (_ BitVec 64))
(declare-fun b_ack!201 () (_ BitVec 64))
(declare-fun c_ack!202 () (_ BitVec 64))
(declare-fun d_ack!203 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!204 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!205) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!201) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!202) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!205)
                    ((_ to_fp 11 53) b_ack!201))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!205)
                    ((_ to_fp 11 53) c_ack!202))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!201)
                    ((_ to_fp 11 53) c_ack!202))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!203) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!205) ((_ to_fp 11 53) b_ack!201)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!205) ((_ to_fp 11 53) c_ack!202)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!205) ((_ to_fp 11 53) d_ack!203))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!203) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!205)
                       ((_ to_fp 11 53) b_ack!201))
               ((_ to_fp 11 53) a_ack!205))
       ((_ to_fp 11 53) b_ack!201)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!205)
                       ((_ to_fp 11 53) b_ack!201))
               ((_ to_fp 11 53) b_ack!201))
       ((_ to_fp 11 53) a_ack!205)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.add roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!205)
                  ((_ to_fp 11 53) b_ack!201))
          ((_ to_fp 11 53) c_ack!202))
  d_ack!203))

(check-sat)
(exit)
