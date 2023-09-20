(declare-fun a_ack!857 () (_ BitVec 32))
(declare-fun b_ack!856 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (bvslt a_ack!857 #x00000000))
(assert (= #x00000000 (bvand (bvsub #x00000000 a_ack!857) #x00000001)))
(assert (not (= #x00000000 a_ack!857)))
(assert (not (= #xffffffff a_ack!857)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!856) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!856) ((_ to_fp 11 53) #x4014000000000000)))
(assert (not (bvule (bvsub #xffffffff a_ack!857) #x000000aa)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53)
            roundNearestTiesToEven
            (bvsub #xffffffff a_ack!857))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
