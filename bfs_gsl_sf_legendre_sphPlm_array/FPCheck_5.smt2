(declare-fun b_ack!27 () (_ BitVec 32))
(declare-fun a_ack!29 () (_ BitVec 32))
(declare-fun c_ack!28 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!27 #x00000000)))
(assert (not (bvslt a_ack!29 b_ack!27)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!28) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!28) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!27)))
(assert (= #x00000000 b_ack!27))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!28)
          ((_ to_fp 11 53) #x3ffbb67ae8584caa))
  #x3fd20dd750429b6d))

(check-sat)
(exit)
