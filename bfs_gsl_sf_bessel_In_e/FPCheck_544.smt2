(declare-fun b_ack!856 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!856)))
                  ((_ to_fp 11 53) #x3e60000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!856)))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!856)))
                   ((_ to_fp 11 53) #x4020000000000000))))
  (not a!1)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!856))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!856))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3c814b37f4b51f71)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.abs (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!4)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbcb3749ef34bc35f)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!4))
                            ((_ to_fp 11 53) #x0000000000000000))
                    ((_ to_fp 11 53) #x3cb3749ef34bc35f))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!5)
                           a!4)
                   ((_ to_fp 11 53) #xbcb87fe49aab41e0)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!26
                                    ((_ to_fp 11 53) #x3c814b37f4b51f71)))
                    a!27))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!5))
                            (fp.abs a!4))
                    ((_ to_fp 11 53) #x3cb87fe49aab41e0))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!6)
                           a!5)
                   ((_ to_fp 11 53) #x3cdfb49140a1644f)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!6))
                            (fp.abs a!5))
                    ((_ to_fp 11 53) #x3cdfb49140a1644f))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!7)
                           a!6)
                   ((_ to_fp 11 53) #x3cf13428ff6ed89c)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!7))
                            (fp.abs a!6))
                    ((_ to_fp 11 53) #x3cf13428ff6ed89c))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!8)
                           a!7)
                   ((_ to_fp 11 53) #xbd057b6f81f8fd0e)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!8))
                            (fp.abs a!7))
                    ((_ to_fp 11 53) #x3d057b6f81f8fd0e))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!9)
                            a!8)
                    ((_ to_fp 11 53) #xbd275e38b1686811)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!28 a!29)
                                    a!30)
                            a!31)
                    a!32))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!9))
                            (fp.abs a!8))
                    ((_ to_fp 11 53) #x3d275e38b1686811))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!10)
                            a!9)
                    ((_ to_fp 11 53) #x3d1153dd90af7a01)))
      (a!35 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!10))
                            (fp.abs a!9))
                    ((_ to_fp 11 53) #x3d1153dd90af7a01))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!11)
                            a!10)
                    ((_ to_fp 11 53) #x3d5b1cc4818bd483)))
      (a!36 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!11))
                            (fp.abs a!10))
                    ((_ to_fp 11 53) #x3d5b1cc4818bd483))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3d69434256cbafff)))
      (a!37 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!12))
                            (fp.abs a!11))
                    ((_ to_fp 11 53) #x3d69434256cbafff))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!13)
                            a!12)
                    ((_ to_fp 11 53) #xbd7f90503bfe65f2)))
      (a!38 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!33 a!34)
                                    a!35)
                            a!36)
                    a!37))
      (a!39 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!13))
                            (fp.abs a!12))
                    ((_ to_fp 11 53) #x3d7f90503bfe65f2))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!14)
                            a!13)
                    ((_ to_fp 11 53) #xbdad0fd580a89e08)))
      (a!40 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!14))
                            (fp.abs a!13))
                    ((_ to_fp 11 53) #x3dad0fd580a89e08))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!15)
                            a!14)
                    ((_ to_fp 11 53) #xbdc1511c7b4b7113)))
      (a!41 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!15))
                            (fp.abs a!14))
                    ((_ to_fp 11 53) #x3dc1511c7b4b7113))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!16)
                            a!15)
                    ((_ to_fp 11 53) #x3daa24fda5ac4a25)))
      (a!42 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!16))
                            (fp.abs a!15))
                    ((_ to_fp 11 53) #x3daa24fda5ac4a25))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!17)
                            a!16)
                    ((_ to_fp 11 53) #x3e00f9ccb61ab9a0)))
      (a!43 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!38 a!39)
                                    a!40)
                            a!41)
                    a!42))
      (a!44 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!17))
                            (fp.abs a!16))
                    ((_ to_fp 11 53) #x3e00f9ccb61ab9a0))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!18)
                            a!17)
                    ((_ to_fp 11 53) #x3e2d2c64a9c0b0ac)))
      (a!45 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!18))
                            (fp.abs a!17))
                    ((_ to_fp 11 53) #x3e2d2c64a9c0b0ac))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!19)
                            a!18)
                    ((_ to_fp 11 53) #x3e58569280edf9e5)))
      (a!46 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!19))
                            (fp.abs a!18))
                    ((_ to_fp 11 53) #x3e58569280edf9e5))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!20)
                            a!19)
                    ((_ to_fp 11 53) #x3e8b8007d9c3a27d)))
      (a!47 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!20))
                            (fp.abs a!19))
                    ((_ to_fp 11 53) #x3e8b8007d9c3a27d))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!21)
                            a!20)
                    ((_ to_fp 11 53) #x3ec8412bc1013d6b)))
      (a!48 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!43 a!44)
                                    a!45)
                            a!46)
                    a!47))
      (a!49 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!21))
                            (fp.abs a!20))
                    ((_ to_fp 11 53) #x3ec8412bc1013d6b))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!22)
                            a!21)
                    ((_ to_fp 11 53) #x3f120fa37899a1b5)))
      (a!50 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!22))
                            (fp.abs a!21))
                    ((_ to_fp 11 53) #x3f120fa37899a1b5))))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!23)
                                    a!22)
                            ((_ to_fp 11 53) #x3f6b998ca2e5903f))))
      (a!51 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!23))
                            (fp.abs a!22))
                    ((_ to_fp 11 53) #x3f6b998ca2e5903f))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd8000000000000)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!24 a!23)
                                    ((_ to_fp 11 53) #x3f9be62aca809cb5)))))
      (a!52 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!48 a!49)
                                    a!50)
                            a!51)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!24)
                                    (fp.abs a!23))
                            ((_ to_fp 11 53) #x3f9be62aca809cb5))))
      (a!55 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fd8000000000000)
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!24 a!23)
                                    ((_ to_fp 11 53) #x3f9be62aca809cb5)))
                    ((_ to_fp 11 53) #x7fffffffffffffff))))
(let ((a!53 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3cb0000000000000)
                                    a!52)
                            ((_ to_fp 11 53) #x3c814b37f4b51f71))
                    ((_ to_fp 11 53) #x7fffffffffffffff))))
(let ((a!54 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3cc0000000000000)
                                    a!25)
                            ((_ to_fp 11 53) #x7fffffffffffffff))
                    a!53)))
  (FPCHECK_FMUL_UNDERFLOW
    (CF_exp (fp.abs ((_ to_fp 11 53) b_ack!856)))
    (fp.add roundNearestTiesToEven
            a!54
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3cc0000000000000)
                    (fp.abs a!55))))))))))))))))))))))))))))))))

(check-sat)
(exit)
