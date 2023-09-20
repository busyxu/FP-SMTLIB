(declare-fun d_ack!148 () (_ BitVec 32))
(declare-fun a_ack!149 () (_ BitVec 64))
(declare-fun b_ack!146 () (_ BitVec 64))
(declare-fun c_ack!147 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand d_ack!148 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!149) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!146) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!147) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!149)
                    ((_ to_fp 11 53) b_ack!146))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!149)
                    ((_ to_fp 11 53) c_ack!147))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!146)
                    ((_ to_fp 11 53) c_ack!147))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!149) ((_ to_fp 11 53) b_ack!146)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!149) ((_ to_fp 11 53) c_ack!147)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!149) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!149)
          ((_ to_fp 11 53) b_ack!146))
  c_ack!147))

(check-sat)
(exit)
