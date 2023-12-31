(declare-fun a_ack!63 () (_ BitVec 32))
(declare-fun b_ack!62 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!63 #x00000000)))
(assert (not (= #x00000000 a_ack!63)))
(assert (not (= #x00000001 a_ack!63)))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) b_ack!62)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY #x4000000000000000 b_ack!62))

(check-sat)
(exit)
