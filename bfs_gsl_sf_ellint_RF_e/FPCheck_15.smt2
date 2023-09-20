(declare-fun d_ack!160 () (_ BitVec 32))
(declare-fun a_ack!161 () (_ BitVec 64))
(declare-fun b_ack!158 () (_ BitVec 64))
(declare-fun c_ack!159 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand d_ack!160 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!161) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!158) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!159) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!161)
                    ((_ to_fp 11 53) b_ack!158))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!161)
                    ((_ to_fp 11 53) c_ack!159))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!158)
                    ((_ to_fp 11 53) c_ack!159))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!161) ((_ to_fp 11 53) b_ack!158)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!161) ((_ to_fp 11 53) c_ack!159)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!161) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.add roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!161)
                  ((_ to_fp 11 53) b_ack!158))
          ((_ to_fp 11 53) c_ack!159))
  #x4008000000000000))

(check-sat)
(exit)
