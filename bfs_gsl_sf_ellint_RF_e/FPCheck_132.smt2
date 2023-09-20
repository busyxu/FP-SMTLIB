(declare-fun d_ack!1232 () (_ BitVec 32))
(declare-fun a_ack!1233 () (_ BitVec 64))
(declare-fun b_ack!1230 () (_ BitVec 64))
(declare-fun c_ack!1231 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun const_arr10 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand d_ack!1232 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1233) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1230) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1231) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1233)
                    ((_ to_fp 11 53) b_ack!1230))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1233)
                    ((_ to_fp 11 53) c_ack!1231))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1230)
                    ((_ to_fp 11 53) c_ack!1231))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1233) ((_ to_fp 11 53) b_ack!1230))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1230) ((_ to_fp 11 53) c_ack!1231))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1231) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1233)
                                   ((_ to_fp 11 53) b_ack!1230))
                           ((_ to_fp 11 53) c_ack!1231))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1233))
                           a!1)))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!1230))
                           a!1))))
  (not (fp.gt (fp.abs a!2) (fp.abs a!3))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1233)
                                   ((_ to_fp 11 53) b_ack!1230))
                           ((_ to_fp 11 53) c_ack!1231))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!1230))
                           a!1)))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!1231))
                           a!1))))
  (not (fp.gt (fp.abs a!2) (fp.abs a!3))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1233)
                                   ((_ to_fp 11 53) b_ack!1230))
                           ((_ to_fp 11 53) c_ack!1231))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!3 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand d_ack!1232 #x00000007))
                  #x3f50624dd2f1a9fc
                  #x3f9eb851eb851eb8))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!1231))
                           a!1))))
  (fp.lt (fp.abs a!2) a!3))))
(assert (let ((a!1 ((_ extract 31 0)
             (bvmul #x0000000000000008
                    (concat #x00000000 (bvand d_ack!1232 #x00000007)))))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1233)
                                   ((_ to_fp 11 53) b_ack!1230))
                           ((_ to_fp 11 53) c_ack!1231))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (concat (select const_arr10 (bvadd #x00000002 a!1))
                   (concat (select const_arr10 (bvadd #x00000001 a!1))
                           (select const_arr10 a!1))))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) a_ack!1233))
                           a!5)))
      (a!7 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) b_ack!1230))
                           a!5)))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) c_ack!1231))
                           a!5))))
(let ((a!3 (concat (select const_arr10 (bvadd #x00000004 a!1))
                   (concat (select const_arr10 (bvadd #x00000003 a!1)) a!2)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!6 a!7)
                   (fp.mul roundNearestTiesToEven a!8 a!8))))
(let ((a!4 (concat (select const_arr10 (bvadd #x00000006 a!1))
                   (concat (select const_arr10 (bvadd #x00000005 a!1)) a!3)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fa5555555555555)
                                    a!9)
                            ((_ to_fp 11 53) #x3fb999999999999a))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb1745d1745d174)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!6 a!7)
                                    a!8)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!10 a!9))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb2492492492492)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!6 a!7)
                                    a!8)))))
  (FPCHECK_FMUL_ACCURACY
    (concat (select const_arr10 (bvadd #x00000007 a!1)) a!4)
    (fp.abs (fp.div roundNearestTiesToEven
                    a!11
                    ((_ to_fp 11 53) #x5fd6a09e667f3bcd))))))))))
(assert (= (select const_arr10 #x00000000) #x00))
(assert (= (select const_arr10 #x00000001) #x00))
(assert (= (select const_arr10 #x00000002) #x00))
(assert (= (select const_arr10 #x00000003) #x00))
(assert (= (select const_arr10 #x00000004) #x00))
(assert (= (select const_arr10 #x00000005) #x00))
(assert (= (select const_arr10 #x00000006) #xb0))
(assert (= (select const_arr10 #x00000007) #x3c))
(assert (= (select const_arr10 #x00000008) #x00))
(assert (= (select const_arr10 #x00000009) #x00))
(assert (= (select const_arr10 #x0000000a) #x00))
(assert (= (select const_arr10 #x0000000b) #x00))
(assert (= (select const_arr10 #x0000000c) #x00))
(assert (= (select const_arr10 #x0000000d) #x00))
(assert (= (select const_arr10 #x0000000e) #x80))
(assert (= (select const_arr10 #x0000000f) #x3e))
(assert (= (select const_arr10 #x00000010) #x00))
(assert (= (select const_arr10 #x00000011) #x00))
(assert (= (select const_arr10 #x00000012) #x00))
(assert (= (select const_arr10 #x00000013) #x00))
(assert (= (select const_arr10 #x00000014) #x00))
(assert (= (select const_arr10 #x00000015) #x00))
(assert (= (select const_arr10 #x00000016) #x40))
(assert (= (select const_arr10 #x00000017) #x3f))

(check-sat)
(exit)
